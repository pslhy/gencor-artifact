let rec get_pairs_count (arr : int list) (sum : int) : int = 
  let rec helper (lst : int list) (seen : int set) (count : int) : int =
    match lst with
    | [] -> count
    | x::xs -> 
        let target = sum - x in
        if Set.mem target seen then
          helper xs (Set.add x seen) (count + 1)
        else
          helper xs (Set.add x seen) count
  in helper arr Set.empty 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
