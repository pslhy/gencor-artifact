let rec digitSum (s : string) : int = 
  let rec sum chars acc = 
    match chars with
    | [] -> acc
    | c :: cs -> 
        if c >= 'A' && c <= 'Z' then sum cs (acc + int_of_char c)
        else sum cs acc
  in sum (List.of_seq (String.to_seq s)) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
