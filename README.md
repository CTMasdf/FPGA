# FPGA 실습 및 팀 프로젝트 포트폴리오

## 개요
본 저장소는 FPGA 과목에서 수행한 주차별 실습 과제 팀 프로젝트 결과물을 정리한 포트폴리오입니다.

기본 입출력 논리 게이트 조합논리 회로 순차논리 회로 카운터 세그먼트 출력 부저 출력 LOAD 기능 비동기식 RESET 기능을 실습하고 동작표 회로도 시뮬레이션 영상으로 검증했습니다.

## 개발 환경

| 항목 | 내용 |
|---|---|
| 분야 | FPGA 디지털 논리 회로 설계 |
| 설계 언어 | VHDL |
| 주요 도구 | FPGA 개발 환경 시뮬레이터 |
| 검증 방식 | 동작표 시뮬레이션 FPGA 보드 동작 영상 |
| 문서 형식 | README PPTX PDF |

## 저장소 구성

| 구분 | 폴더 | 주요 내용 | 영상 |
|---|---|---|---|
| 2학년 1학기 4주차 | [First_week4_240326](./First_week4_240326) | 1입력 입출력 2입력 AND 3입력 OR All Gate 과제 | [실습1](https://youtu.be/A_xMtlQAUy8) [실습2](https://youtu.be/JCM5srvlBGA) [실습3](https://youtu.be/ifIAiSAXOr0) [과제](https://youtu.be/fq0-KQaXvw0) |
| 2학년 1학기 5주차 | [First_week5_240401](./First_week5_240401) | 3입력 AND OR XOR 인버터 버퍼 회로 | [영상](https://www.youtube.com/watch?v=l2-7cILv8yA) |
| 2학년 1학기 6주차 | [First_week6_240408](./First_week6_240408) | 조합논리 회로 실습 과제 | [실습1](https://youtu.be/2qOY2NzABxk) [실습2](https://youtu.be/-r-CvaiYMWE) [과제1](https://youtu.be/sDVg5UrgNhM) [과제2](https://youtu.be/YLviLQWIdlU) |
| 2학년 1학기 7~8주차 팀 프로젝트 | [Firtst_week6_Team_project_240417](./Firtst_week6_Team_project_240417) | std_logic std_logic_vector 기반 FPGA 회로 설계 | [실습1](https://youtu.be/A_xMtlQAUy8) [실습2](https://youtu.be/JCM5srvlBGA) [실습3](https://youtu.be/iflAiSAXOr0) [과제](https://youtu.be/fq0-KQaXvw0) |
| 2학년 1학기 10주차 팀 프로젝트 | [Firtst_week10_Team_project_240508](./Firtst_week10_Team_project_240508) | 조건처리문 병행처리문 가상회로 FPGA 회로 비교 | [문제2](https://youtu.be/NeBVun9NQzI) [문제6](https://youtu.be/v3drQ2zxbi4) |
| 2학년 1학기 11주차 | [First_week11_240516](./First_week11_240516) | 조건별 출력값 X 처리 실습 | - |
| 2학년 2학기 4주차 팀 프로젝트 | [Seconde_week10_Team_project_241104](./Seconde_week10_Team_project_241104) | T Flip-Flop JK Flip-Flop 설계 | [T Flip-Flop](https://youtu.be/40fSx7eilFY) [JK Flip-Flop](https://youtu.be/bDyMEUNakEw) |
| 2학년 2학기 9주차 팀 프로젝트 | 폴더 추가 예정 | Johnson Counter Ring Counter Ripple Counter 설계 | [Johnson](https://youtu.be/vCX_CYNrqul) [Ring](https://youtu.be/B00bfulwpys) [Ripple](https://youtu.be/BZC5qBIQfkw) |
| 2학년 2학기 10주차 팀 프로젝트 | 폴더 추가 예정 | 비동기식 RESET 8진 5진 Segment Counter Beep LOAD 기능 | [8진](https://youtu.be/DarWXztJbiU) [5진](https://youtu.be/IE1U33jugLM) [실습1](https://youtu.be/h2nBaQFZ4as) [실습2](https://youtu.be/EpnJecLublQ) |

## 주요 학습 내용

### 1. 기본 논리 게이트 설계
- 1입력 입출력 연결
- 2입력 AND 게이트 구현
- 3입력 OR 게이트 구현
- OR XOR NAND NOR XNOR 회로 구현
- 인버터와 버퍼 회로 구현

### 2. 조합논리 회로 설계
- 입력 조합에 따른 출력 동작표 작성
- 가상회로 구성
- LUT 기반 FPGA 회로 확인
- 시뮬레이션 파형 검증

### 3. 조건처리문과 병행처리문 비교
- case 문 기반 회로 구현
- if then else 문 기반 회로 구현
- when else 문 기반 회로 구현
- with select when 문 기반 회로 구현
- 가상회로와 FPGA 합성 회로 비교

### 4. 순차논리 회로 설계
- T Flip-Flop 설계
- JK Flip-Flop 설계
- 전상태 기억 동작 확인
- Set Reset Toggle 동작 검증

### 5. 카운터 회로 설계
- Johnson Counter 설계
- Ring Counter 설계
- Ripple Counter 설계
- 시뮬레이션 파형 분석
- FPGA 회로 구성 확인

### 6. Segment Counter와 Beep 제어
- 비동기식 RESET 기능 구현
- 8진 Segment Counter 구현
- 5진 Segment Counter 구현
- Beep 출력 제어
- LOAD 기능 추가
- 7 Segment 출력 코드 검증

## 대표 결과물

| 항목 | 설명 |
|---|---|
| 동작표 | 입력 조건에 따른 출력 논리 정리 |
| 가상회로 | RTL 수준 회로 구조 확인 |
| FPGA 회로 | LUT IBUF OBUF 기반 합성 회로 확인 |
| 시뮬레이션 | 시간 변화에 따른 신호 파형 검증 |
| 영상 | 실제 동작 결과를 YouTube 링크로 기록 |
| 발표자료 | PPTX 원본과 PDF 열람본으로 정리 |

## 문서 관리 방식

발표자료는 PPTX와 PDF를 함께 관리하는 방식을 권장합니다.

- PPTX는 수정 가능한 원본 자료입니다.
- PDF는 GitHub에서 빠르게 열람하기 위한 자료입니다.
- README는 전체 구조와 핵심 내용을 빠르게 확인하기 위한 요약 문서입니다.

## PDF 업로드 권장 구조

```text
각_프로젝트_폴더/
├── README.md
└── docs/
    ├── presentation.pptx
    └── presentation.pdf
```

README에는 다음 형식으로 연결합니다.

```markdown
## 발표자료
- [PPTX 원본](./docs/presentation.pptx)
- [PDF 열람본](./docs/presentation.pdf)
```

## 포트폴리오 목적

본 저장소는 FPGA 실습 과정과 팀 프로젝트 수행 과정을 체계적으로 정리하기 위한 포트폴리오입니다.

각 주차별 실습의 동작표 회로도 시뮬레이션 결과 영상 자료를 함께 정리하여 회로 설계 과정과 검증 과정을 명확하게 확인할 수 있도록 구성했습니다.
