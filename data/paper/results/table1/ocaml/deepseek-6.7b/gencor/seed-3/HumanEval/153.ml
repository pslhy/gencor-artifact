
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
  let strength_extension extension  =
    let cap = String.length (String.concat "" (List.filter (fun c -> 'A' <= c && c <= 'Z') (String.to_seq extension))) in
    let sm = String.length (String.concat "" (List.filter (fun c -> 'a' <= c && c <= 'z') (String.to_seq extension))) in
    (extension, cap - sm)
  in
  let strengths = List.map strength_extension extensions in
  match strengths with
  | [] -> class_name ^ ".None"
  | (extension, _) :: other_strengths ->
      let max_strength = List.fold_left (fun acc_extension (_, strength) -> if snd acc_extension > strength then acc_extension else extension, strength) (extension, snd (strength_extension extension)) other_strengths in
      class_name ^ "." ^ fst max_strength

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
