
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec rank_and_truncate nums n =
    if n <= 0 then
      []
    else
      let heaped = heap_queue_largest nums (n-1) in
      match nums with
      | [] -> heaped
      | x :: xs -> if List.length heaped < n then x :: heaped
                    else if List.hd heaped < x then x :: heaped
                    else heaped
  in
  let rec sift_up nums =
    match nums with
    | [] | [_] -> nums
    | x :: (y :: xs as tail) -> if x > y then x :: sift_up tail else y :: sift_up (x :: xs)
  in
  List.hd nums :: sift_up (rank_and_truncate (List.tl nums) n)

let rec largest_nums (nums : int list) (n : int) : int list =
  if n <= 0 then
    []
  else
    match nums with
    | [] -> []
    | x :: xs -> List.sort (compare) (x :: (largest_nums xs (n-1)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
