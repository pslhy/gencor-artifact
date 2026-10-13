let rec get_pairs_count (arr : int list) (sum : int) : int = 
  let rec check_pairs acc = function
    | [] -> acc
    | h::t ->
        let rec count_pairs = function
          | [] -> acc
          | hh::tt -> 
              if hh + h = sum then count_pairs tt (acc + 1)
              else count_pairs tt acc
        in
        check_pairs (count_pairs t acc) t
  in
  check_pairs 0 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
