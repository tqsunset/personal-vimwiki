# gitignore

## .gitignore 
프로젝트 내  git으로 관리하지 않을 파일들의 리스트이자 설정 파일.

## 문법
```
# .file 파일 제외
*.file

# 제외되는 .file중에서 lib.file은 트래킹함 
!lib.file

# 현 폴더의 TODO파일만 제외(TODO 폴더아님)
/TODO

# build 디렉토리의 파일들을 제외
build/

# doc/test.txt를 제외(doc/files/notes.txt는 제외하지 않음)
doc/*.txt

# doc2/아래의 모든 txt 파일을 제외
doc2/**/*.txt
```

## 적용방법
- .gitignore 파일을 해당 깃의 최상위 디렉토리에 넣으면 커밋과 푸시 등에서 자동으로 제외됨.

## 참고 
- https://www.toptal.com/developers/gitignore
	: 언어, IDE, operating system에 따른 .gitignore 파일의 기본 포맷 제공.
