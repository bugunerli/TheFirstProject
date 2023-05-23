@isTest
public class ScheduledTaskCleanUpTest {

    @TestSetup
    static void createTestData(){
        // Arrange
        List<Task> allTasks = new List<Task>();

        for(Integer i=1; i<=10 ;i++) {
            Task t = new Task(Subject = 'Test schedule ' + i,
                                ActivityDate = Date.today() - 1);
            allTasks.add(t); 
        }
        insert allTasks;


        
    }

    @isTest
    static void testOverdueTasksGetCompletedWithSchedule(){
        
        //Act
        Test.startTest();

        ScheduledTaskCleanUp stc = new ScheduledTaskCleanUp();
        System.schedule('Task cleanup', '0 0 0 15 3 ? 2042', stc);
        // before Test.stopTest line run, assert Completed Task count is 0
        List<Task> theTasksBeforeScheduleRun = [SELECT Id FROM Task WHERE Status = 'Completed'];
        Assert.areEqual(0,theTasksBeforeScheduleRun.size());

        Test.stopTest();// after this line schduled apex code will forced to run right away

        // Assert
        // we are expecting all 10 tasks status become Copleted

        List<Task> latestTasks = [SELECT Id FROM Task WHERE Status = 'Completed'];
        Assert.areEqual(10,latestTasks.size());
        
    
    }
    
}