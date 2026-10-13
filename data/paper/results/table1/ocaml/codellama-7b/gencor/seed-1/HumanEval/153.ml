
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
match extensions with
| [] -> class_name
| extension :: rest ->
let current_strength =
List.fold_left (fun acc curr -> if curr < extension then curr else acc) min_int
extensions
in
if current_strength < Sys.getenv "CLASS_STRENGTH"
then extension
else strongest_Extension class_name rest

let test_Strongest_Extension (class_name : string) (extensions : string list) (expected : string) : unit =
let result = strongest_Extension class_name extensions in
assert (expected = result)

let () =
test_Strongest_Extension "AA" [] "AA" ();
test_Strongest_Extension "AA" ["BB"] "BB" ();
test_Strongest_Extension "AA" ["AA"; "BB"] "AA" ();
test_Strongest_Extension "AA" ["BB"; "AA"] "AA" ();
test_Strongest_Extension "AA" ["AA"; "BB"; "CC"] "BB" ();
test_Strongest_Extension "AA" ["BB"; "CC"; "AA"] "BB" ();
test_Strongest_Extension "AA" ["CC"; "BB"; "AA"] "BB" ();
test_Strongest_Extension "AA" ["AA"; "BB"; "CC"; "DD"] "DD" ();
test_Strongest_Extension "AA" ["BB"; "CC"; "DD"; "AA"] "DD" ();
test_Strongest_Extension "AA" ["CC"; "DD"; "AA"; "BB"] "DD" ();
test_Strongest_Extension "AA" ["DD"; "CC"; "AA"; "BB"] "DD" ();
test_Strongest_Extension "AA" ["AA"; "BB"; "CC"; "DD"; "EE"] "EE" ();
test_Strongest_Extension "AA" ["BB"; "CC"; "DD"; "EE"; "AA"] "EE" ();
test_Strongest_Extension "AA" ["CC"; "DD"; "EE"; "AA"; "BB"] "EE" ();
test_Strongest_Extension "AA" ["DD"; "CC"; "EE"; "AA"; "BB"] "EE" ();
test_Strongest_Extension "AA" ["AA"; "BB"; "CC"; "DD"; "EE"; "FF"] "FF" ();
test_Strongest_Extension "AA" ["BB"; "CC"; "DD"; "EE"; "FF"; "AA"] "FF" ();
test_Strongest_Extension "AA" ["CC"; "DD"; "EE"; "FF"; "AA"; "BB"] "FF" ();
test_Strongest_Extension "AA" ["DD"; "CC"; "EE"; "FF"; "AA"; "BB"] "FF" ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You will be given the name of a class (a string) and a list of extensions. *)
(*     The extensions are to be used to load additional classes to the class. The *)
(*     strength of the extension is as follows: Let CAP be the number of the uppercase *)
(*     letters in the extension's name, and let SM be the number of lowercase letters *)
(*     in the extension's name, the strength is given by the fraction CAP - SM. *)
(*     You should find the strongest extension and return a string in this *)
(*     format: ClassName.StrongestExtensionName. *)
(*     If there are two or more extensions with the same strength, you should *)
(*     choose the one that comes first in the list. *)
(*     For example, if you are given "Slices" as the class and a list of the *)
(*     extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should *)
(*     return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension *)
(*     (its strength is -1). *)
(*     Example: *)
(*     >>> Strongest_Extension "my_class" ["AA"; "Be"; "CC"] *)
(*     "my_class.AA" *)
