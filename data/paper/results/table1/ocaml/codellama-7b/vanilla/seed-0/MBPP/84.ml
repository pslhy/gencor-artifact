let rec sequence (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 1
  else
    let next_num = sequence (n - 1) in
    if next_num = 0 then 1 else sequence (n - next_num)

let () =
  assert (sequence 1 = 1);
  assert (sequence 2 = 1);
  assert (sequence 3 = 1);
  assert (sequence 4 = 1);
  assert (sequence 5 = 1);
  assert (sequence 6 = 1);
  assert (sequence 7 = 1);
  assert (sequence 8 = 1);
  assert (sequence 9 = 1);
  assert (sequence 10 = 1);
  assert (sequence 11 = 1);
  assert (sequence 12 = 1);
  assert (sequence 13 = 1);
  assert (sequence 14 = 1);
  assert (sequence 15 = 1);
  assert (sequence 16 = 1);
  assert (sequence 17 = 1);
  assert (sequence 18 = 1);
  assert (sequence 19 = 1);
  assert (sequence 20 = 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
