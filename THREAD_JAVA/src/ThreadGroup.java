

/**
 * Thread Group : 말 그대로 서로 관련된 쓰레드들을 묶은 형태
 *
 * 보안상의 이유로 도입되었으며 자신이 속한 쓰레드 그룹이나 하위 그룹은 변경할 수 있지만 다른 쓰레드 그룹의 쓰레드를 변경할 순 없다
 * 
 * 모든 쓰레드는 반드시 쓰레드 그룹에 포함되어 있어야 하기 때문에 쓰레드 그룹을 지정하지 않은 경우 기본적으로 자신을 생성한 쓰레드와 같은 쓰레드 그룹에 속하게 된다
 *      default는 선언한 쓰레드 그룹에 속한다는 것
 * Java app이 실행될 때  JVM은 기본적으로 main, system 총 2개의 쓰레드 그룹 생김
 *
 */
public class ThreadGroup {
}