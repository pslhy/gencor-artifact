let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    let m = String.length x in
    let n = String.length y in
    let o = String.length z in
    let dp = Array.init (m + 1) (fun _ -> Array.init (n + 1) (fun _ -> Array.init (o + 1) (fun _ -> 0))) in
    for i = 1 to m do
        for j = 1 to n do
            for k = 1 to o do
                if x.[i-1] = y.[j-1] && y.[j-1] = z.[k-1] then
                    dp.(i).(j).(k) <- dp.(i-1).(j-1).(k-1) + 1
                else
                    dp.(i).(j).(k) <- max (dp.(i-1).(j).(k)) (max (dp.(i).(j-1).(k)) (dp.(i).(j).(k-1)))
            done
        done
    done;
    dp.(m).(n).(o)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
