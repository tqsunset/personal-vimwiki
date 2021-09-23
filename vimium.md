# vimium 팁들

## 사이트의 전용 단축키 사용하기
비미움은 h,k 등의 키를 조작에 사용한다. 따라서 사이트 자체의 해당 단축키를 사용하려면 입력모드에 들어가서 단축키를 누른 후 다시 입력모드를 빠져나와야되는 번거로움이 있다. 이런 경우 passNextKey 기능은 이어 입력하는 키를 바로 사이트 자체로 보내 기존 단축키 사용을 가능하게 한다. 

비미움 설정 페이지의 Custom key mappings에 다음과 같이 passNextKey 단축키를 지정해 놓았다.
```
map e passNextKey 
```
예를 들어 트위터에서 홈 타임라인으로 이동하는 단축키 gh를 입력하기 위해 일일히 igh - <Esc>로 번거롭게 조작할 입력모드를 나올 필요 없이 egh를 사용하면 된다. 

입력모드로 사이트를 사용하는 중 자체 단축키 <Esc>키가 필요한 경우 <Esc>를 누르면 그냥 입력모드가 종료되는 문제가 발생하는데 이런 경우애도 e<Esc>를 사용하면 된다.

 * 참고: [Tips and Tricks by philic](https://github.com/philc/vimium/wiki/Tips-and-Tricks)
