let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let rec aux (acc : int list) (cur : int) (i : int) : int =
        if i = 0 then
            cur
        else
            let new_acc = cur + List.nth(a, i) in
            let new_cur = if (new_acc > cur) then cur else new_acc in
            aux (new_acc::acc) new_cur (i - 1)
    in
    if k = 1 then
        aux 0 0 (List.length(a) - 1)
    else
        let new_a = List.concat(List.init(k - 1)(fun i -> a)) in
        aux 0 0 (List.length(new_a) - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
