let rec strongest_Extension (class_name : string) (extensions : string list) : string =
match extensions with
| [] -> class_name
| extension :: rest ->
let current_strength = strength_Extension extension in
let rest_strength = strongest_Extension class_name rest in
if current_strength > rest_strength then
extension
else
rest_strength
and strength_Extension (extension : string) : int =
let uppercase =
String.count extension ~f:(fun c -> Char.is_uppercase c) in
let lowercase =
String.count extension ~f:(fun c -> Char.is_lowercase c) in
let diff = uppercase - lowercase in
if diff < 0 then 0 else diff
in
`>>> let my_extensions = ["aa"; "bb"; "cc"] in
Strongest_Extension "my_class" my_extensions;;
- : string = "my_class.aa"


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
