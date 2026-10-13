(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" || y = "" || z = "" then
        0
    else if x.[0] = y.[0] && y.[0] = z.[0] then
        1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
    else
        let a = lcs_of_three x y z
        let b = lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
        let c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z
        let d = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        let e = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        let f = lcs_of_three x y z
        max a (max b (max c (max d (max e f))))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" || y = "" || z = "" then
        0
    else
        let a = lcs_of_three x y z
        let b = lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
        let c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z
        let d = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        let e = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        max a (max b (max c (max d e)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" || y = "" || z = "" then
        0
    else
        let a = lcs_of_three x y z
        let b = lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
        let c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z
        let d = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        let e = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        max a (max b (max c (max d e)))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" then 0
    else if y = "" then 0
    else if z = "" then 0
    else
        let a = lcs_of_three x y z
        let b = lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
        let c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z
        let d = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        let e = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        max a (max b (max c (max d e)))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" || y = "" || z = "" then
        0
    else
        let a = lcs_of_three x y z
        let b = lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
        let c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z
        let d = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        let e = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        max a (max b (max c (max d e)))
