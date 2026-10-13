let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | _ -> List.fold_left (+) 0 (List.map (fun x -> List.fold_left (+) 0 x) (odd_length_sublists arr))

and odd_length_sublists (arr : int list) : int list list =
  match arr with
  | [] -> []
  | x::xs -> List.map (fun y -> x::y) (odd_length_sublists xs) @ odd_length_sublists xs

let rec remove_even_length_sublists arr =
  match arr with
  | [] -> []
  | x::xs -> if (List.length x) mod 2 = 0 then remove_even_length_sublists xs else x::(remove_even_length_sublists xs)

let solve_problem arr =
  odd_length_sum (remove_even_length_sublists arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
