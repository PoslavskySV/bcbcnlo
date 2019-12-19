import cc.redberry.core.tensor.Tensor
import cc.redberry.core.transformations.Transformation
import com.wolfram.jlink.MathLinkFactory

import static cc.redberry.core.context.OutputFormat.WolframMathematica

def String[] mArgs;
def osName = System.getProperty('os.name')
if (osName.contains("Mac"))
    mArgs = ["-linkmode", "launch", "-linkname", "\"/Applications/Mathematica.app/Contents/MacOS/MathKernel\" -mathlink"]
else if (osName.contains("Linux"))
    mArgs = ["-linkmode", "launch", "-linkname", "math -mathlink"]
else
    throw new RuntimeException("Only Linux or Mac")
def mKernel = MathLinkFactory.createKernelLink(mArgs);
mKernel.discardAnswer();

$WolframFactor = { Tensor tensor ->
    mKernel.evaluateToInputForm('Factor[' + tensor.toString(WolframMathematica) + ']', 0).replace('^', '**').t
} as Transformation