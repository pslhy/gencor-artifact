let rec sort_third (l : int list) : int list =
    let rec sort_array (arr : int array) =
        Array.sort (fun a b -> a - b) (arr)
    in
    let arr = Array.of_list l in
    let sorted_arr = sort_array arr in
    let rec loop (i : int) (arr : int array) (res : int array) =
        if i < Array.length arr then begin
            if i mod 3 = 0 then
                let res = Array.set res i sorted_arr.(i) in
                loop (i + 1) arr res
            else
                let res = Array.set res i arr.(i) in
                loop (i + 1) arr res
        end
        else
            res
    in
    Array.to_list (loop 0 arr (Array.make (Array.length arr) 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal *)
(*     to the values of the corresponding indicies of l, but sorted. *)
(*     >>> sort_third [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_third [5; 6; 3; 4; 8; 9; 2] *)
(*     [2; 6; 3; 4; 8; 9; 5] *)
