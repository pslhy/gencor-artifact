let rec count_up_to (n : int) : int list =
  let rec is_prime num =
    if num < 2 then false
    else if num = 2 then true
    else if num mod 2 = 0 then false
    else
      let rec loop i  =
        if i * i > num then true
        else if num mod i = 0 then false
        else loop (i + 1)
      in loop 3 in
  if n < 2 then []
  else 2 :: List.filter is_prime (List.init (n-2) (fun x -> x+3))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
