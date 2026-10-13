(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
let rec count_rotation (arr : int list) : int = 
    let n = List.length arr in 
    if n = 1 then 0 else 
        let head = List.hd arr in 
        let tail = List.tl arr in 
        let cnt = count_rotation tail in 
        let rec loop (i : int) (rem_cnt : int) : int = 
            if i = n-1 then 
                if head < tail.(i) then rem_cnt else cnt + rem_cnt 
            else if head < tail.(i) then loop (i+1) (rem_cnt+1) else loop (i+1) rem_cnt in 
        loop 0 0 
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_rotation (arr : int list) : int = 
    let n = List.length arr in 
    if n = 1 then 0 else 
        let (head, tail) = (List.hd, List.tl) arr in 
        let cnt = count_rotation tail in 
        let rec loop (i : int) (rem_cnt : int) : int = 
            if i = n-1 then 
                if head < tail.(i) then rem_cnt else cnt + rem_cnt 
            else if head < tail.(i) then loop (i+1) (rem_cnt+1) else loop (i+1) rem_cnt in 
        loop 0 0 
end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_rotation (arr : int list) : int = 
    let n = List.length arr in 
    if n = 1 then 0 else 
        let head = List.hd arr in 
        let tail = List.tl arr in 
        let cnt = count_rotation tail in 
        let rec loop (i : int) (rem_cnt : int) : int = 
            if i = n-1 then 
                if head < tail.(i) then rem_cnt else cnt + rem_cnt 
            else if head < tail.(i) then loop (i+1) (rem_cnt+1) else loop (i+1) rem_cnt in 
        loop 0 0 
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_rotation (arr : int list) : int = 
    let n = List.length arr in 
    if n <= 1 then 0 else 
        let head = List.hd arr in 
        let tail = List.tl arr in 
        let cnt = count_rotation tail in 
        let rec loop (i : int) (rem_cnt : int) : int = 
            if i = n-1 then 
                if head < tail.(i) then rem_cnt else cnt + rem_cnt 
            else if head < tail.(i) then loop (i+1) (rem_cnt+1) else loop (i+1) rem_cnt in 
        loop 0 0 
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_rotation (arr : int list) : int = 
    let n = List.length arr in 
    if n <= 1 then 0 else 
        let head = List.hd arr in 
        let tail = List.tl arr in 
        let cnt = count_rotation tail in 
        let rec loop (i : int) (rem_cnt : int) : int = 
            if i = n-1 then 
                if head < tail.(i) then rem_cnt else cnt + rem_cnt 
            else if head < tail.(i) then loop (i+1) (rem_cnt+1) else loop (i+1) rem_cnt in 
        loop 0 0 
end

