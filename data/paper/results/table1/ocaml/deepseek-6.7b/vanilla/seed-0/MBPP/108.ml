let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    match num1, num2, num3 with
    | [], [], [] -> []
    | x1::xs1, y1::ys1, z1::zs1 -> (
        match x1, y1, z1 with
        | x, y, z ->
            let rec insert x ys =
                match ys with
                | [] -> [x]
                | z::zs -> if x <= z then x::ys else z::(insert x zs)
            in 
            let nums1 = insert y (insert z (merge_sorted_list xs1 ys1 zs1))
            in 
            let nums2 = merge_sorted_list num1 num2 num3
            in  
            if nums1 <= nums2 then nums1 else nums2
    )
    | _ -> failwith "Three lists should be equal in length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
