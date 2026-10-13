let rec comb_sort (nums : int list) : int list =
    let acc = [0] in
    let max_length = 1000 in
    let rec sub_sort (left : int list) (right : int list) : unit =
        if right = [] then
            ()
        else
            let pivot = right.(0) in
            let i = ref 0 in
            while !i < List.length left && left.(!i) < pivot do
                i := !i + 1
            done;
            combine left pivot i right;
            sub_sort left.(0 -- i._2) left.(i._2 + 1 -- right._2);
            sub_sort left.(i._2 + 1 -- right._2) right do
    in
    sub_sort nums (List.rev nums);
    acc
end;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
