let rec count_up_to (n : int) : int list =
    if n < 2 then []
    else
    let rec is_prime = function
      | 0 | 1 -> false
      | n -> not (List.exists (fun x -> n mod x = 0) (List.init n (fun i -> i + 2)))
    in
    let rec count_primes (i : int) : int list =
      if i >= n then []
      else
        let next =
          if is_prime i then i :: count_primes (i + 1)
          else count_primes (i + 1)
        in next
    in count_primes 2


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
