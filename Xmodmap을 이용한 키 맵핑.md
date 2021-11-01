# Xmodmap을 이용한 키 맵핑

여기서 **키보드의 물리적 버튼**은 **버튼** 또는 **keycode**로,
**버튼에 배당된 값(역할)**은 **키 심볼(keysym)**이라고 부른다.

## 사용할 주요 어플리케이션/config 파일

- xmodmap : 키맵 수정 유틸리티

- xev : 어떤 버튼의 키코드를 알기 위해 사용

- ~/.bashrc : terminal configuration file

###  1. 기존 xmodmap config 파일 백업

```shell
$ xmodmap -pke > ~/xmodmap_original
```

### 2. 커스텀 config 파일 생성

```shell
$ xmodmap -pke > ~/.Xmodmap
```

`~/.Xmodmap`에 커스텀 매핑을 저장할 것이다. (우선적으로 키 맵핑에 자동적용됨)



## 3. 대상 버튼의 keycode 알아내기 

```shell
$ xev
```

xev 실행 후 대상 버튼을 조작하면 다음과 같은 메세지가 뜬다.

![xev 실행 메세지](/home/gwlee/Pictures/Screenshot from 2021-07-15 21-46-19.png)

keycode 뒤에 이어지는 숫자가 그 버튼의 keycode이다. 예시의 keycode는 133이다.

## 4. 커스텀 config 파일 수정

`~/.Xmodmap`파일 내의 키보드 맵을 원하는 대로 수정한다. 

키보드맵은 다음과 같은 형식을 가지고 있다.

```shell
# (keycode) = (keysym의 리스트)

keycode 131 = Hangul_Hanja NoSymbol Hangul_Hanja NoSymbol Hangul_Hanja
```

따라서 이것은 keycode 131가 한자 전환 키(Hangul_Hanja)임을 의미한다.

하나의 keycode는 다른 키와의 조합에 따라 다른 keysym을 배정받을 수 있다. 리스트에서 왼쪽에서부터 차례로 다음과 같은 조합으로 입력되었을 때의 keysym을 의미한다.

1. `Key`
2. `Shift+Key`
3. `Mode_switch+Key`
4. `Mode_switch+Shift+Key`
5. `ISO_Level3_Shift+Key`
6. `ISO_Level3_Shift+Shift+Key`

따라서 위의 예문에서 keycode 131는  shift와 같이 누를 때는 아무런 역할도 하지 않고, Mode_switch와 같이 누를 땐 한자 전환 키로 작동함을 알 수 있다.

> ❗ **`~/.Xmodmap`내의 설정이 적용되지 않거나 자꾸 풀리는 경우**
> 1. Xmodmap 커맨드 리스트를 셸 파일로 저장
>
>    예시)
>
>    ```shell
>    #!/bin/sh
>    
>    xmodmap -e "keycode 46 = l L l L lstroke Lstroke lstroke"
>    xmodmap -e 'add Mod3 = Super_L' 
>    ```
>
>    위의 파일이 `~/supermap.sh`이라고 가정한다.
>
> 2. `~/.bashrc`에  `~/supermap.sh`를 실행시키는 alias 추가
>
>    ```shell
>    # set Super_Rd to Mod3 
>    alias keyset='sh ~/.supermap.sh'
>    ```
>
>    위와 같은 줄을 `~/.bashrc`에 추가한다.
>
> 3. 개인 키맵 설정이 듣지 않을 때마다 추가한 alias를 터미널에서 실행
>
>    ```shell
>    $ keyset
>    ```
>
>    - 터미널 실행 : Ctrl+Alt +T
>
> 새로운 입력장치를 연결하거나 USB를 연결하면 커스텀 설정이 풀린다. 그럴 때마다 사용하는 방법이다.
> 다소 조잡한 방법이지만 지금까지 사용에 별 문제는 없었다. 



## 참조

[Xmodmap - archwiki](https://wiki.archlinux.org/title/xmodmap)

[우분투에서 xmodmap을 이용하여 key를 remap하는 방법](https://codechacha.com/ko/how-to-use-xmodmap/)
