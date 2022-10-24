import java.io.*
import java.math.*
import java.security.*
import java.text.*
import java.util.*
import java.util.concurrent.*
import java.util.function.*
import java.util.regex.*
import java.util.stream.*
import kotlin.collections.*
import kotlin.comparisons.*
import kotlin.io.*
import kotlin.jvm.*
import kotlin.jvm.functions.*
import kotlin.jvm.internal.*
import kotlin.ranges.*
import kotlin.sequences.*
import kotlin.text.*

/*
 * Complete the 'countingValleys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

fun countingValleys(steps: Int, path: String): Int {
    var seaLevel: Int = 0
    var valley: Int = 0
    var mountain: Int = 0
    for (i in 0 until path.length) {
        if (seaLevel == 0) {
            seaLevel += 1
        }
        if (path[i].toString() == "U") {
            if (mountain == valley) {
                seaLevel += 1
                mountain = 0
                valley = 0
            } else {
                mountain += 1
            }
        } else if (path[i].toString() == "D") {
            valley += 1
        }
    }
    return  seaLevel
}

fun main(args: Array<String>) {
    val result = countingValleys(12, "DDUUDDUDUUUD")
    println(result)
}
