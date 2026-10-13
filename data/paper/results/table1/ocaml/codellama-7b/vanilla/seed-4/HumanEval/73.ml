let rec smallest_change (arr : int list) : int =
  let len = List.length arr in
  let rec helper (left : int) (right : int) (ans : int) : int =
    if left >= right then ans
    else
      let rec min_change (i : int) (j : int) : int =
        if i >= j then 0
        else
          let diff = abs (arr.(i) - arr.(j)) in
          min (diff + min_change (i + 1) (j))
                (diff + min_change (i) (j - 1))
      in
      let min_pos = min_change 0 (len - 1) in
      helper (left + min_pos) (right + min_pos)
        (ans + min_pos)
  in
  helper 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list arr of integers, find the minimum number of elements that *)
(*     need to be changed to make the list palindromic. A palindromic list is a list that *)
(*     is read the same backwards and forwards. In one change, you can change one element to any other element. *)
(*     For example: *)
(*     >>> smallest_change [1; 2; 3; 5; 4; 7; 9; 6] *)
(*     4 *)
(*     >>> smallest_change [1; 2; 3; 4; 3; 2; 2] *)
(*     1 *)
(*     >>> smallest_change [1; 2; 3; 2; 1] *)
(*     0 *)
