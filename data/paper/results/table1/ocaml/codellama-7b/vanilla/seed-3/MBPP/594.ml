let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | head1 :: _ ->
    let rec find_even (list2 : int list) : int option =
      match list2 with
      | [] -> None
      | head2 :: _ ->
        if head2 mod 2 = 0 then Some head2
        else find_even list2
    in
    let rec find_odd (list3 : int list) : int option =
      match list3 with
      | [] -> None
      | head3 :: _ ->
        if head3 mod 2 <> 0 then Some head3
        else find_odd list3
    in
    match find_even list1, find_odd list1 with
    | Some even, Some odd -> even - odd
    | _, _ -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
