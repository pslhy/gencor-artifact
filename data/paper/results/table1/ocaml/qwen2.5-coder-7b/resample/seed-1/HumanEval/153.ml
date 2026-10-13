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
  let strength ext = 
    let upper = String.length (Ext.string_map (fun c -> if Char.is_uppercase c then c else '\000') ext) in
    let lower = String.length (Ext.string_map (fun c -> if Char.is_lowercase c then c else '\000') ext) in
    upper - lower
  in
  let strongest exts best_ext best_strength = 
    match exts with
    | [] -> best_ext
    | ext :: rest -> 
      let ext_strength = strength ext in
      if ext_strength > best_strength then strongest rest ext ext_strength
      else strongest rest best_ext best_strength
  in
  class_name ^ "." ^ (strongest extensions "" 0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound module "Ext" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength ext = 
    let upper = String.length (String.map (fun c -> if Char.is_uppercase c then c else '\000') ext) in
    let lower = String.length (String.map (fun c -> if Char.is_lowercase c then c else '\000') ext) in
    upper - lower
  in
  let strongest exts best_ext best_strength = 
    match exts with
    | [] -> best_ext
    | ext :: rest -> 
      let ext_strength = strength ext in
      if ext_strength > best_strength then strongest rest ext ext_strength
      else strongest rest best_ext best_strength
  in
  class_name ^ "." ^ (strongest extensions "" 0)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:56: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength ext = 
    let upper = String.length (String.map (fun c -> if c >= 'A' && c <= 'Z' then c else '\000') ext) in
    let lower = String.length (String.map (fun c -> if c >= 'a' && c <= 'z' then c else '\000') ext) in
    upper - lower
  in
  let strongest exts best_ext best_strength = 
    match exts with
    | [] -> best_ext
    | ext :: rest -> 
      let ext_strength = strength ext in
      if ext_strength > best_strength then strongest rest ext ext_strength
      else strongest rest best_ext best_strength
  in
  class_name ^ "." ^ (strongest extensions "" 0)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:44: Unbound value "strongest" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 7 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
  let strength ext = 
    let upper = String.length (String.map (fun c -> if c >= 'A' && c <= 'Z' then c else '\000') ext) in
    let lower = String.length (String.map (fun c -> if c >= 'a' && c <= 'z' then c else '\000') ext) in
    upper - lower
  in
  let rec strongest exts best_ext best_strength = 
    match exts with
    | [] -> best_ext
    | ext :: rest -> 
      let ext_strength = strength ext in
      if ext_strength > best_strength then strongest rest ext ext_strength
      else strongest rest best_ext best_strength
  in
  class_name ^ "." ^ (strongest extensions "" 0)

