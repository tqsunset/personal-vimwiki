 Parameter Expension

## 매개변수 확장이란

어떤 변수 `foo=cde`가 있다고 하자. 'abcde' 스트링을 만들기 위해 foo를 다음과 같이 사용할 수 있다.
```
$ foo=cde

$ echo "ab$foo"
abcde

# 'ab$foo'와 같이 따옴표만 사용했을 땐 작동하지 않음
```
이와 같이 기존의 스트링 변수를 간단히 조작할 수 있다.

## abdcefg?

그렇다면 'abcdefg' 스트링을 만들기 위해서는 어떻게 해야하는가?
```
$ echo "ab$foofg"	# foofg라는 변수의 값은 null이므로 ab만 출력된다.
ab

$ echo "ab${foo}fg"	# $가 뒤에 붙은 {}에만 적용되므로 나머지 스트링과 구분이 가능하다.
abcdefg
```

## String length
변수 앞에 #를 붙이면 해당 변수가 가진 문자 수를 표시한다.
```
$ foo="Hello world"
$ echo ${#foo}
11
```

## Substring removal 
<TODO: finish subsstring removal>
## 참고
- https://mug896.github.io/bash-shell/exp_and_sub/parameter_expansion.html
- https://linuxhint.com/bash_parameter_expansion/
