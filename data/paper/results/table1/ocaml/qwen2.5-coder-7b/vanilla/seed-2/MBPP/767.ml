let rec get_pairs_count (arr : int list) (sum : int) : int = 
    let rec find_pairs (arr : int list) (sum : int) (count : int) : int = 
        match arr with
        | [] -> count
        | x::xs -> 
            let new_count = 
                List.filter (fun y -> x + y = sum) xs 
                |> List.length 
                |> (+) count 
            find_pairs xs sum new_count 
    in 
    find_pairs arr sum 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
