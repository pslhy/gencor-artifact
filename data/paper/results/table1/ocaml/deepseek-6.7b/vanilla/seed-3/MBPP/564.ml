let rec count_Pairs (arr : int list) (n : int) : int =
  match arr with
  | [] -> n
  | x :: xs -> 
        let rec count_unequal (arr : int list) (n : int) (x : int) : int =
            match arr with
            | [] -> n
            | y :: ys -> if x <> y then count_unequal ys (n+1) x else count_unequal ys n x
        in count_Pairs xs (n + count_unequal arr 0 x)

(* Test *)
let test = count_Pairs [1; 2; 3; 4] 0 
(* the output must be 6, the list has 6 unordered pairs where the elements are unequal *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
