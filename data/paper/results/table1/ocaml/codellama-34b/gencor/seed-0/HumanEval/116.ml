
let rec sort_array (arr : int list) : int list =
    let compare_ones (x : int) (y : int) =
        let ones_x = ref 0 in
        let ones_y = ref 0 in
        for i = 0 to 31 do
            if x land (1 lsl i) <> 0 then
                ones_x := !ones_x + 1
            else if y land (1 lsl i) <> 0 then
                ones_y := !ones_y + 1
        done;
        if !ones_x = !ones_y then
            x - y
        else
            !ones_x - !ones_y
    in
    let len = List.length arr in
    if len <= 1 then
        arr
    else
        let pivot = arr.(len / 2) in
        let less = Array.make 0 (len / 2) in
        let greater = Array.make 0 (len / 2 + 1) in
        let i = ref 0 in
        let j = ref 0 in
        for k = 0 to len - 1 do
            let x = arr.(k) in
            if x < pivot then begin
                less.(!i) <- x;
                i := !i + 1
            end else if x > pivot then begin
                greater.(!j) <- x;
                j := !j + 1
            end
        done;
        let left = sort_array (Array.to_list less) in
        let right = sort_array (Array.to_list greater) in
        left @ [pivot] @ right

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
