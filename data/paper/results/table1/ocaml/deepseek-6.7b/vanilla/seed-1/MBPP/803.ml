let rec is_perfect_square (n : int) : bool =
  match n with
  | 0 -> true
  | _ ->
    let rec find_square (i : int) (j : int) : bool =
      if i*i == n then
        true
      else if i*i < n && j*j > n then
        false
      else
        find_square (i + 1) (j - 1)
    in
    find_square 0 n
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
