let rec digitSum (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs -> 
        let ascii_value = int x in
        if ascii_value >= 65 && ascii_value <= 90 then ascii_value - 32 (* capitalize the uppercase alphabets *)
        else ascii_value + digitSum xs

let _ =
  Printf.printf "%d\n" (digitSum "");
  Printf.printf "%d\n" (digitSum "abAB");
  Printf.printf "%d\n" (digitSum "abcCd");
  Printf.printf "%d\n" (digitSum "helloE");
  Printf.printf "%d\n" (digitSum "woArBld");
  Printf.printf "%d\n" (digitSum "aAaaaXa")


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
