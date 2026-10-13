(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Task *)
(*     Write a function that takes a string as input and returns the sum of the upper characters only' *)
(*     ASCII codes. *)
(*     Examples: *)
(*     >>> digitSum "" *)
(*     0 *)
(*     >>> digitSum "abAB" *)
(*     131 *)
(*     >>> digitSum "abcCd" *)
(*     67 *)
(*     >>> digitSum "helloE" *)
(*     69 *)
(*     >>> digitSum "woArBld" *)
(*     131 *)
(*     >>> digitSum "aAaaaXa" *)
(*     153 *)
let rec digitSum (s : string) : int = 
  let rec sum_upper_chars (i : int) (acc : int) : int = 
    if i >= String.length s then acc
    else 
      let c = s.[i] in
      if Char.is_uppercase c then sum_upper_chars (i + 1) (acc + Char.code c)
      else sum_upper_chars (i + 1) acc
  in sum_upper_chars 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int = 
  let rec sum_upper_chars (i : int) (acc : int) : int = 
    if i >= String.length s then acc
    else 
      let c = s.[i] in
      if c >= 'A' && c <= 'Z' then sum_upper_chars (i + 1) (acc + Char.code c)
      else sum_upper_chars (i + 1) acc
  in sum_upper_chars 0 0

