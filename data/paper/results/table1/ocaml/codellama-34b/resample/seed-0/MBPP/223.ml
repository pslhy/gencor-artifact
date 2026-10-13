(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    match arr with
    | [] -> false
    | hd :: tl ->
        if hd = x then
            let count = 1
            let rec count_x (arr : int list) : int =
                match arr with
                | [] -> count
                | hd :: tl -> if hd = x then count_x tl else count
            in
            count_x tl > n / 2
        else
            is_majority tl n x

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  if List.length arr = 0 then false
  else if List.hd arr = x then
    let rec count_x (arr : int list) : int =
      if List.length arr = 0 then 0
      else if List.hd arr = x then 1 + count_x (List.tl arr)
      else count_x (List.tl arr)
    in
    if count_x arr > n / 2 then true else false

