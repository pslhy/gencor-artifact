
let rec newman_prime (n : int) : int =
  let rec is_prime n =
    if n = 2 then true
    else if n < 2 || n mod (sqrt (float_of_int n)) = 0 then false
    else not (List.exists ((=) 0) (List.map (fun x -> n mod x) (List.init (n) (fun i -> i + 1)))) in
  let rec count_prime n m =
    if is_prime m then
      if n = 1 then m
      else count_prime (n-1) (m+1)
    else count_prime n (m+1) in
  if n > 0 then count_prime n 2
  else failwith "n must be greater than zero"
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
