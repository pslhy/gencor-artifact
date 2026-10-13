let rec left_rotate (n : int) (d : int) : int =
  let acc = ref n in
  for i = 1 to d do
    acc := (!acc land 0x7fffffff) lor ((!acc lsr 31) lsl 1);
  done;
  !acc

let left_rotate n d =
  match n with
  | n when n land 0x80000000 = 0 -> left_rotate (n lor 0xffffffff) d
  | _ -> left_rotate n d


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
