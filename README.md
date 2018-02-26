---


---

<h1 id="pin-bootstrap-docker-container">PIN bootstrap docker container</h1>
<h2 id="usage">Usage</h2>
<p># PIN bootstrap docker container

## UsRunning the container with a mounted volume on current folder:</p>
<pre><code>$ docker build -t pin github.com/moraispgsi/pin-bootstrap &amp;&amp;& \
docker run --privileged --rm -it -v "$(pwd):/pintools/source/tools/MyNewPinTool" pin bash
</code></pre>
<p>Running a pin-tool:</p>
<pre><code>$ pin -t &lt;tool-name&gt; -- &lt;program&gt;
</code></pre>
<p>Run sample pintools from ManualExamples and copy their results and source code to the host mounted volume directory:</p>
<pre><code>$ pin -t /pintools/source/tools/ManualExamples/inscount0.so -- /bin/ls
$ cp inscount.out $APP
$ cp /pintools/source/tools/ManualExamples/inscount0.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/ManualExamples/itrace.so -- /bin/ls
$ cp itrace.out $APP
$ cp /pintools/source/tools/ManualExamples/itrace.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/ManualExamples/pinatrace.so -- /bin/ls
$ cp pinatrace.out $APP
$ cp /pintools/source/tools/ManualExamples/pinatrace.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/SimpleExamples/obj-intel64/opcodemix.so -- /bin/ls
$ cp opcodemix.out $APP
$ cp /pintools/source/tools/SimpleExamples/opcodemix.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/SimpleExamples/obj-intel64/regmix.so -- /bin/ls
$ cp regmix.out $APP
$ cp /pintools/source/tools/SimpleExamples/regmix.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/ManualExamples/inscount1.so -- /bin/ls
$ cp inscount.out $APP
$ cp /pintools/source/tools/ManualExamples/inscount1.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/SimpleExamples/obj-intel64/edgcnt.so -- /bin/pwd 
$ cp edgcnt.out $APP
$ cp /pintools/source/tools/SimpleExamples/edgcnt.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/ManualExamples/obj-intel64/proccount.so -- /bin/ls
$ cp proccount.out $APP
$ cp /pintools/source/tools/ManualExamples/proccount.cpp $APP
</code></pre>
<pre><code>$ pin -t /pintools/source/tools/SimpleExamples/obj-intel64/imageload.so -- /bin/ls
$ cp imageload.out $APP
$ cp /pintools/source/tools/SimpleExamples/imageload.cpp $APP
</code></pre>

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM1MTA3NTExMF19
-->