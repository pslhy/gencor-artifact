
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.uppercase_ascii h)) in
        let s_class, s_extension = strongest_Extension class_name t in
        let s_strength = (String.length s_extension) - (String.length (String.uppercase_ascii s_extension)) in
        if strength > s_strength then 
            class_name ^ "." ^ h 
        else 
            s_class ^ "." ^ s_extension

let _ = print_endline (strongest_Extension "my_class" ["AA"; "Be"; "CC"])

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
