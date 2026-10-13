let rec odd_length_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | [_] -> 0
    | _ ->
        let mid = List.length arr / 2 in
        let rec sum_odd_length_sublists (left : int list) (right : int list) : int =
            match left with
            | [] -> 0
            | [_] -> 0
            | head::tail ->
                let rest_sum = sum_odd_length_sublists tail (List.tl right) in
                let _, odd_sum = List.fold_left (fun (i, (sum, acc)) x ->
                    let new_sum = sum + (if i mod 2 = 0 then x else -x) in
                    let new_acc = if i mod 2 <> 0 then new_sum :: acc else acc in
                    (i+1, (new_sum, new_acc))
                ) (0, (0, [])) (head::right) in
                let odd_sum = List.fold_left (+) 0 odd_sum in
                odd_sum + rest_sum
        in
        let left, right = List.split_nth mid arr in
        sum_odd_length_sublists left right


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
