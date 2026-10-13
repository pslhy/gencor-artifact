(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength (ext : string) : float = 
    let upper = ref 0 in
    let lower = ref 0 in
    for i = 0 to String.length ext - 1 do
      if Char.is_uppercase ext.[i] then incr upper
      else if Char.is_lowercase ext.[i] then incr lower
    done;
    float !upper -. float !lower
  in
  let strongest = List.max (List.map (fun ext -> (strength ext, ext)) extensions) in
  class_name ^ "." ^ strongest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength (ext : string) : float = 
    let upper = ref 0 in
    let lower = ref 0 in
    for i = 0 to String.length ext - 1 do
      if ext.[i] >= 'A' && ext.[i] <= 'Z' then incr upper
      else if ext.[i] >= 'a' && ext.[i] <= 'z' then incr lower
    done;
    float !upper -. float !lower
  in
  let strongest = List.max (List.map (fun ext -> (strength ext, ext)) extensions) in
  class_name ^ "." ^ strongest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength (ext : string) : float = 
    let upper = ref 0 in
    let lower = ref 0 in
    for i = 0 to String.length ext - 1 do
      if ext.[i] >= 'A' && ext.[i] <= 'Z' then incr upper
      else if ext.[i] >= 'a' && ext.[i] <= 'z' then incr lower
    done;
    float !upper -. float !lower
  in
  let strongest = 
    extensions 
    |> List.map (fun ext -> (strength ext, ext)) 
    |> List.sort (fun (s1, _) (s2, _) -> Float.compare s2 s1)
    |> List.hd 
  in
  class_name ^ "." ^ (snd strongest)

