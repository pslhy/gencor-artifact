
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str =
    if i < len then
      if Char.code (String.get test_str i) >= 48 && Char.code (String.get test_str i) <= 57 then
        helper (i + 1) (counter + 1) out_str
      else
        helper (i + 1) counter (out_str ^ String.make 1 (String.get test_str i))
    else
      if counter > 0 then
        helper 0 counter (out_str ^ String.make counter '0')
      else out_str
  in helper 0 0 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
