## 1.2.4 연습문제
### 1. ggplot(data = mpg)을 실행하라. 무엇이 나타나는가?
library(tidyverse)
ggplot(data = mpg)

답 : 아무것도 나타나지 않는다.

### 2. mpg는 행이 몇개 인가? 열은 몇개인가?
str(mpg)

답: 행 234개 열 11개

### 3. drv 변수는 무엇을 나타내는가? mpg로 도움말 페이지를 참고하여 알아보자.
?mpg
답: drv = the type of drive train, where f = front-wheel drive, r = rear wheel drive, 4 = 4wd

### 4. hwy 대 cyl 산점도를 만들어라.

ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))

### 5. class 대 drv 산점도를 만들면 어떻게 되는가? 이 플롯이 유용하지 않은 이유는 무엇인가?

ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))

산점도를 통해 관계를 파악할 수 없다. 
그 이유는 class와 drv 모두 character class이기 때문이다.

