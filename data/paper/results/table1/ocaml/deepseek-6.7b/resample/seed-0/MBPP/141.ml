(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec pancake_sort (nums : int list) : int list =
    let rec flip (k: int) : unit =
        if k > 0 then
            let temp = nums.(k)
            nums.(k) <- nums.(0)
            nums.(0) <- temp
            flip (k - 1)
    and max_index_left (n : int) : int =
        let rec mi_l (i : int) : int =
            if n - i = 1 || nums.(i) > nums.(i + 1) then i
            else mi_l (i + 1)
        in mi_l 0
    and max_index_right (n : int) : int =
        let rec mi_r (i : int) : int =
            if i = n then 0
            else if n - i = 1 then if nums.(i) > nums.(0) then i else 0
            else if nums.(i) > nums.(mi_r (i + 1)) then i else mi_r (i + 1)
        in mi_r 0
    and max_index (n : int) : int =
        if nums.(0) > nums.(n) then 0
        else if nums.(n) >= nums.(max_index (n - 1)) then n
        else max_index (n - 1)
        in
    let n = List.length nums - 1 in
    for i = n downto 1 do
        if i <> max_index i then
            let m = max_index i
            in (if m > 0 then flip m;
                flip i;);
            flip 0;
            List.iteri (fun j x -> nums.(j) <- x) nums
    done;
    nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pancake_sort (nums : int list) : int list =
    let flip (nums : int list) (k: int) : int list =
        if k > 0 then
            let temp = nums.(k) in
            nums.(k) <- nums.(0);
            nums.(0) <- temp;
            flip nums (k - 1)
        else nums
    and max_index_left (nums : int list) (n : int) : int =
        let rec mi_l (nums : int list) (i : int) : int =
            if n - i = 1 || nums.(i) > nums.(i + 1) then i
            else mi_l nums (i + 1)
        in mi_l nums 0
    and max_index_right (nums : int list) (n : int) : int =
        let rec mi_r (nums : int list) (i : int) : int =
            if i = n then 0
            else if n - i = 1 then if nums.(i) > nums.(0) then i else 0
            else if nums.(i) > nums.(mi_r nums (i + 1)) then i else mi_r nums (i + 1)
        in mi_r nums 0
    and max_index (nums : int list) (n : int) : int =
        if nums.(0) > nums.(n) then 0
        else if nums.(n) >= nums.(max_index nums (n - 1)) then n
        else max_index nums (n - 1)
    in
    let nums = Array.of_list nums in
    let n = Array.length nums - 1 in
    for i = n downto 1 do
        if i <> max_index nums i then
            let m = max_index nums i in
            if m > 0 then flip nums m;
            flip nums i;
            flip nums 0;
            nums <- Array.to_list nums
    done;
    Array.to_list nums

