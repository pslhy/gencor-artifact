let rec odd_length_sum (arr : int list) : int = 
    let rec sum_sublists sublists = 
        match sublists with 
        | [] -> 0 
        | h::t -> 
            let sum = 
                List.fold_left (fun acc x -> acc + x) 0 h 
            in 
            sum + (sum_sublists t) 
    in 
    let rec generate_sublists lst =
        match lst with 
        | [] -> [] 
        | h::t -> 
            (List.map (fun x -> h::x) (generate_sublists t)) @ 
            (generate_sublists t)
    in 
    let sublists = generate_sublists arr in 
    List.filter (fun lst -> List.length lst mod 2 <> 0) sublists 
    |> sum_sublists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
