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
  let rec sum acc = function
    | [] -> acc
    | c :: cs -> 
        if Char.is_uppercase c then sum (acc + Char.code c) cs else sum acc cs
  in
  sum 0 (String.to_list s)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int = 
  let rec sum acc = function
    | [] -> acc
    | c :: cs -> 
        if Char.uppercase_ascii c = c then sum (acc + Char.code c) cs else sum acc cs
  in
  sum 0 (String.to_list s)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int = 
  let rec sum acc = function
    | [] -> acc
    | c :: cs -> 
        if Char.uppercase_ascii c = c then sum (acc + Char.code c) cs else sum acc cs
  in
  sum 0 (Array.to_list (String.to_array s))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:25: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int = 
  let rec sum acc = function
    | [] -> acc
    | c :: cs -> 
        if Char.uppercase_ascii c = c then sum (acc + Char.code c) cs else sum acc cs
  in
  sum 0 (List.of_seq (String.to_seq s))

