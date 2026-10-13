let rec average_tuple (nums : int list list) : float list = 
    let rec sum_and_count lst sum count = 
        match lst with 
            [] -> (sum, count)
            | x :: xs -> let (s, c) = sum_and_count xs sum (count + 1) in (s + x, c) in
    let averages = List.map (fun lst -> 
        let (sum, count) = sum_and_count lst 0 0 in 
        float sum /. float count) nums in 
    averages


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
