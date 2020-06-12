  #!/bin/sh 
      p=`grep "perform(" src/test/java/com/tcs/fresco/AuthControllerTest.java` 
      if [ ! -n "$p" ]; then 
      fil="target/surefire-reports/TEST-com.tcs.fresco.AuthControllerTest.xml"
      echo '     <testcase name="Validation" classname="tcs.programs.mockmvc.validationchecks" time="0"> ' > $fil
      echo '     <failure type="">There is a failure' >> $fil
      echo '     </failure>' >> $fil
      echo '     <system-out><![CDATA[  Nothing to write  ]]></system-out>' >> $fil
      echo '     </testcase>' >> $fil
      fi