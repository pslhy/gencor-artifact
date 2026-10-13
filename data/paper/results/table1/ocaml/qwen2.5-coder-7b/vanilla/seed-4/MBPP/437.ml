let rec remove_odd (str1 : string) : string = 
  let rec helper (str1 : string) (index : int) (result : string) : string =
    if index = String.length str1 then result
    else if index mod 2 = 0 then helper str1 (index + 1) (result ^ String.sub str1 index 1)
    else helper str1 (index + 1) result
  in
  helper str1 0 ""

(* Test cases *)
let () =
  assert (remove_odd "abcdef" = "ace");
  assert (remove_odd "1234567890" = "13579");
  assert (remove_odd "hello world" = "hlo ol");


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
