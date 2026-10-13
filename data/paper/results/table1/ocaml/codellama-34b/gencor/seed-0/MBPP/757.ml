
let rec count_reverse_pairs (test_list : string list) : int =
    match test_list with
    | [] -> 0
    | x :: xs ->
        let count = ref 0 in
        for ys = xs do_at_exit
            count := !count + 1
        count_reverse_pairs xs


# test_list = ["hello"; "world"; "bye"; "bye"; "hello"]
# count_reverse_pairs test_list = 2

# test_list = ["hello"; "world"; "bye"]
# count_reverse_pairs test_list = 0

# test_list = ["hello"; "world"; "bye"; "bye"]
# count_reverse_pairs test_list = 2

# test_list = ["hello"; "world"; "bye"; "bye"; "hello"]
# count_reverse_pairs test_list = 2

# test_list = ["hello"; "world"; "bye"; "bye"; "hello"]
# count_reverse_pairs test_list = 4

# test_list = ["hello"; "world"; "bye"; "bye"; "hello"; "world"]
# count_reverse_pairs test_list = 

let rec count_reverse_pairs (test_list : string list) : int =
    match test_list with
    | [] -> 0
    | x :: xs ->
        let count = ref 0 in
        for ys = xs do_at_exit
";

namespace OpenConext\ EngineBlock\ Driver\ Db\ Mssql;
use \ OpenConext\ EngineBlock\ Driver\ DriverInterface;
use PDO;
require_once "Open_creat-not-begin-__POS__";
class Driver implements DriverInterface{

}
$driver     = new Driver();
$connection = $driver->getConnection([]);

$statement = $connection->prepare("     
     
/
    '?'  /
    (
       /
        ) /
        '
'
    ;

");
$statement->bindValue(1, $param1);
$statement->bindValue(-1, [1,2]);
$statement->execute();
var_dump($statement->fetchAll());
?>
--EXPECTF--
� at %sxception.php:12

object(PDOStatement)#%d (1) {
   ["string_of_float:="__construct""]=> array(1) { string(4) ", 2578" string(4) ", 2578" }
}

    this is
    ok
/ *
   OK
 ?
   totem
// 
check %sск Psychopath Songmasktotem %s  for
            none
            </html>
//            </title>
                

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
