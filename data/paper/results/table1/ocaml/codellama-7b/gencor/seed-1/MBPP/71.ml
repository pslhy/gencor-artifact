
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
            List.iter (fun x ->
                if x < pivot then
                    acc := pivot :: !acc
                else
                    acc := x :: !acc
            ) !i;
            List.iter (fun x ->
                if x > pivot then
                    acc := pivot :: !acc
                else
                    acc := x :: !acc
            ) !i;
            sub_sort (left !i) (right 1)
    in
    sub_sort nums (nums 1);
    !acc

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
