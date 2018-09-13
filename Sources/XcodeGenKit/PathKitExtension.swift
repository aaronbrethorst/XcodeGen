import PathKit

extension Path {

    /// Treat this as a resource instead of an normal directory.
    ///
    /// - NOTE: "lproj" is handled differently.
    var isFileLikeDirectory: Bool {
        guard let ex = self.extension else { return false }
        return ["xcdatamodel"].contains(ex)
    }

}