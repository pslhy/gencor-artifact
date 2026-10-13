
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    let m = String.length x and
    n = String.length y and 
    o = String.length z in

   let lcs = Array.make_matrix ~-1 [[| |]] (m+1) (n+1) in
   let lcs_1 = Array.make_matrix ~-1 [[| |]] (m+1) (n+1) (o+1) in
   
   for i=0 to m do
        for j=0 to n do
            for k=0 to o do
                if i = 0 || j = 0 || k = 0 then
                    lcs_1.(i).(j).(k) = 0
                else if x.[i-1] = y.[j-1] && y.[j-1] = z.[k-1] then
                    lcs_1.(i).(j).(k) = lcs_1.(i-1).(j-1).(k-1) + 1
                else
                    lcs_1.(i).(j).(k) =
                    List.hd (List.sort compare [lcs_1.(i-1).(j).(k); lcs_1.(i).(j-1).(k); lcs_1.(i).(j).(k-1)])
            done
        done
    done;
   lcs_1.(m).(n).(o)

(* Test case *)
let result = lcs_of_three "abcde" "ace" "aue"
let () = assert(result = 2)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
