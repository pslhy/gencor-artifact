let rec is_equal_to_sum_even (n : int) : bool =
  let rec aux (acc : int list) (rem : int) : bool * int list =
    if rem <= 0 then (false, acc)
    else
      match acc with
      | [] ->
        if rem = 0 then (true, [])
        else (false, [])
      | h :: t ->
        let new_acc = if h + rem <= 0 then h :: t else (h + rem) :: acc in
        if List.length new_acc = 4 then (true, new_acc) else aux new_acc (rem - h)
  in
  let (result, _) = aux [] n in
  result


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
