let rec comb_sort (nums : int list) : int list = 
    let swap (x, y) = (y, x) in
    let size = List.length nums in
    let rec do_comb_sort n = 
        let step = n * 10 / 13 in
        if step = 0 then () 
        else let step = step in 
            for i = 0 to (size - n) do
                for j = i + n to (size - step) do 
                    let (_, x), (y, _) = nums.[i], nums.[j] in
                    if x > y then let temp = nums.[i] in
                        nums.[i] <- nums.[j] in
                        nums.[j] <- temp
                done
            done; 
            do_comb_sort (step)
    in do_comb_sort size; 
    nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
