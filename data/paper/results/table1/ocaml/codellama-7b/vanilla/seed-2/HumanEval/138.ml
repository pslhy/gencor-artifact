let rec is_equal_to_sum_even (n : int) : bool =
  match n with
  | 0 -> false
  | 2 -> true
  | _ ->
    let rec find_four (n : int) (acc : int list) : bool =
      match acc with
      | [a; b; c; d] when a + b + c + d = n -> true
      | _ ->
        match n with
        | 0 -> false
        | 2 -> false
        | _ ->
          match n with
          | 4 -> false
          | _ -> find_four (n - 2) (n :: acc)
    in
    find_four n []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers *)
(*     Example *)
(*     >>> is_equal_to_sum_even 4 *)
(*     false *)
(*     >>> is_equal_to_sum_even 6 *)
(*     false *)
(*     >>> is_equal_to_sum_even 8 *)
(*     true *)
