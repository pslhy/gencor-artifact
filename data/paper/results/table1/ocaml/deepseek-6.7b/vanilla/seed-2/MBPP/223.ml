let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  let mid = n / 2 in
  match arr with
  | [] -> false
  | head::tail ->
    if head = x then
      List.length (List.filter ((=) x) arr) > mid
    else
      is_majority tail n x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
