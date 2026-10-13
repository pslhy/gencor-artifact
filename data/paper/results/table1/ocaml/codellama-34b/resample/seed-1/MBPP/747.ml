(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    let m = x.length in
    let n = y.length in
    let p = z.length in
    let l = make_matrix (m + 1) (n + 1) (p + 1) 0 in
    for i = 1 to m do
        for j = 1 to n do
            for k = 1 to p do
                if x.[i - 1] = y.[j - 1] && y.[j - 1] = z.[k - 1] then
                    l.(i).(j).(k) <- l.(i - 1).(j - 1).(k - 1) + 1
                else
                    l.(i).(j).(k) <-
                        max (l.(i - 1).(j).(k) l.(i).(j - 1).(k) l.(i).(j).(k - 1))
            done
        done
    done;
    l.(m).(n).(p)

