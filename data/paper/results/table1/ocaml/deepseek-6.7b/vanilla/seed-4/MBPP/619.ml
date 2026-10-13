let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  if len = 0 then test_str
  else
    match test_str.[0] with
    | '0'..'9' -> move_num (String.sub test_str 1 (len-1)) ^ String.make 1 test_str.[0]
    | _ -> test_str.[0] ^ move_num (String.sub test_str 1 (len-1))
    | _ -> test_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
