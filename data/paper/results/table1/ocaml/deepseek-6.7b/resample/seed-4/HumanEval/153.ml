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
  let strength (extension : string) : int =
    let cap = Str.global_replace (Str.regexp "\\([A-Z]\\)") "\\1," extension 
         |> String.length in
    let sm = Str.global_replace (Str.global_replace (Str.regexp "\\([a-z]\\)") "\\1," class_name)
         |> String.length in
    cap - sm
  in
  let rec max_strength (lst : string list) (max_s : int) (ext_max : string) : string =
    match lst with
    | [] -> ext_max
    | hd :: tl -> let s = strength hd in
                   if s > max_s then max_strength tl s hd else max_strength tl max_s ext_max
  in
  class_name ^ "." ^ max_strength extensions (strength (List.hd extensions)) (List.hd extensions)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
  let strength (extension : string) : int =
    let cap = String.length (Str.global_replace (Str.regexp "[^A-Z]") "" extension) in
    let sm = String.length (Str.global_replace (Str.regexp "[^a-z]") "" extension) in
    cap - sm
  in
  let rec max_strength (lst : string list) (max_s : int) (ext_max : string) : string =
    match lst with
    | [] -> ext_max
    | hd :: tl -> let s = strength hd in
                   if s > max_s then max_strength tl s hd else max_strength tl max_s ext_max
  in
  class_name ^ "." ^ max_strength extensions (strength (List.hd extensions)) (List.hd extensions)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
  let strength (extension : string) : int =
    let cap = String.length (Str.global_replace (Str.regexp "[^A-Z]") "" extension) in
    let sm = String.length (Str.global_replace (Str.regexp "[^a-z]") "" extension) in
    cap - sm
  in
  let rec max_strength (lst : string list) (max_s : int) (ext_max : string) : string =
    match lst with
    | [] -> ext_max
    | hd :: tl -> let s = strength hd in
                   if s > max_s then max_strength tl s hd else max_strength tl max_s ext_max
  in
  class_name ^ "." ^ max_strength extensions (strength (List.hd extensions)) (List.hd extensions)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
  let strength (extension : string) : int =
    let cap = String.length (String.filter (fun c -> Char.uppercase c = c) extension) in
    let sm = String.length (String.filter (fun c -> Char.lowercase c = c) extension) in
    cap - sm
  in
  let rec max_strength (lst : string list) (max_s : int) (ext_max : string) : string =
    match lst with
    | [] -> ext_max
    | hd :: tl -> let s = strength hd in
                   if s > max_s then max_strength tl s hd else max_strength tl max_s ext_max
  in
  class_name ^ "." ^ max_strength extensions (strength (List.hd extensions)) (List.hd extensions)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
  let strength (extension : string) : int =
    let cap = String.length (String.filter (fun c -> Char.code c >= Char.code 'A' && Char.code c <= Char.code 'Z') extension) in
    let sm = String.length (String.filter (fun c -> Char.code c >= Char.code 'a' && Char.code c <= Char.code 'z') extension) in
    cap - sm
  in
  let rec max_strength (lst : string list) (max_s : int) (ext_max : string) : string =
    match lst with
    | [] -> ext_max
    | hd :: tl -> let s = strength hd in
                   if s > max_s then max_strength tl s hd else max_strength tl max_s ext_max
  in
  class_name ^ "." ^ max_strength extensions (strength (List.hd extensions)) (List.hd extensions)

